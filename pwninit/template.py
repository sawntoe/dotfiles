from pwn import *

{bindings}

context.binary = {bin_name}

def conn():
    if args.REMOTE:
        p = remote("addr", 1337)
    else:
        p = process({proc_args})
        if args.GDB:
            context.terminal = "kitty"
            gdb.attach(p)

    return p


def main():
    p = conn()

    # good luck pwning :)

    p.interactive()


if __name__ == "__main__":
    main()
