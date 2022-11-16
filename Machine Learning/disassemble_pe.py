from capstone import *
import pefile


def disassemble_pe(exe):
    pe = pefile.PE(exe)

    md = Cs(CS_ARCH_X86, CS_MODE_64)
    md.detail = True
    print("disassembling...")
    with open(f"{exe[exe.rindex(chr(92))+1:exe.index('exe')]}asm", 'w', encoding='utf-8') as f:
        for section in pe.sections:
            code_byte_data = section.get_data()
            code_addr = pe.OPTIONAL_HEADER.ImageBase+section.VirtualAddress
            for instruction in md.disasm(code_byte_data, code_addr):
                f.write("0x%x:\t%s\t%s\n" % (instruction.address,
                        instruction.mnemonic, instruction.op_str))
