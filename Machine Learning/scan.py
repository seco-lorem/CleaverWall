#virus total malware scanning script
import requests
import argparse
import os
import time
import json


key = 'b12ba274028b12685a75c4ca0cb6f52d922810554ed93939f06891860b4e110e'#API Key

# validate hash passed by user by checking its length
def checkhash(hsh): #Not used since all the hashes are valid in length
        try:
                if len(hsh) == 32:
                        return hsh
                elif len(hsh) == 40:
                        return hsh
                elif len(hsh) == 64:
                        return hsh
                else:
                        print ("The Hash input does not appear valid.")
                        exit()
        except Exception:
                        print ('There is something wrong with your hash \n' + Exception)

def main():
        parser = argparse.ArgumentParser(description="Virus Total Hash Check")
        parser.add_argument('-o', '--output', required=True, help='Output File Location EX: output.txt ')
        parser.add_argument('-H', '--hash',  required=False, help='Filename containing the hashes')
        parser.add_argument('-u', '--unlimited', action='store_const', const=1, required=False, help='Changes the 26 second sleep timer to 1.')
        args = parser.parse_args()
                                                                                                                                                                                                                                           
                                                                                                                                                                                                                      
        if args.hash and key:
                file1 = open(args.hash, 'r')
                Lines = file1.readlines()

                
                for line in Lines:
                        #print("Line{}: {}".format( ))
                        VT_Request(key, line.strip().rstrip(), args.output)

                file1.close() 
                                                                                                                                                                                                            
                #file = open(args.output,'w+')                                                                                                                                                                                              
                #file.write('\n\nBelow is the identified malicious hash.\n\n')                                                                                                                                                              
                #file.close()                                                                                                                                                                                                               
                #VT_Request(key, args.hash.rstrip(), args.output)                                                                                                                                                                           
                                                                                                                                                                                                                                           
def VT_Request(key, hash, output):
        params = {'apikey': key, 'resource': hash}
        url = requests.get('https://www.virustotal.com/vtapi/v2/file/report', params=params)
        json_response = url.json()
        x = str(json_response)
        x = x.replace("'", '"') 
        x = x.replace("False", '"False"')
        x = x.replace(".\"False\"", '.False')
        x = x.replace("True", '"True"')
        x = x.replace("\"None\"", 'None')#some scanners return "None" instead of None
        x = x.replace("None", '"None"')


        
        #print("\n " + x + "\n")

        parsed = json.loads(x)
        y =json.dumps(parsed, indent = 4, sort_keys=True)

        #print ("\n")
        response = int(json_response.get('response_code'))
        if isinstance(json_response.get('scans').get('ClamAV'),dict) == True:
                scans = str(json_response.get('scans').get('ClamAV')['result']) #To get different lable change 'ClamAV' to another scanner name.
                if response == 0:
                        #print (y + "\n\n" + hash + ' is not in Virus Total')
                        file = open(output,'a')
                        file.write("\n" + hash + "\t 0" + ' \t ' + scans)

                        file.close()
                elif response == 1:
                        positives = int(json_response.get('positives'))
                        
                        if positives == 0:
                                #print (y + "\n\n" + hash + ' is not malicious')
                                file = open(output,'a')
                                file.write("\n" + hash + "\t 0" + ' \t ' + scans)

                                file.close()
                        else:
                                #print (y + "\n\n" + hash + ' is malicious')
                                file = open(output,'a')
                                file.write("\n" + hash + "\t" + str(positives) + ' \t ' + scans)

                                file.close()
                else:
                        print (y + "\n\n" + hash + ' could not be searched. Please try again later.')
        else:#ClamAV is not present in the json
                file = open(output,'a')
                file.write("\n" + hash + "\t" + ' \t\t\t Not In ClamAV' )
                file.close()
# running the program
if __name__ == '__main__':
        main()