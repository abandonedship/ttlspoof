# ttlspoof
Spoof TTL value to avoid common Os Identifier based on icmp packets.  

<pre>

████████╗████████╗██╗         ███████╗██████╗  ██████╗  ██████╗ ███████╗
╚══██╔══╝╚══██╔══╝██║         ██╔════╝██╔══██╗██╔═══██╗██╔═══██╗██╔════╝
   ██║      ██║   ██║         ███████╗██████╔╝██║   ██║██║   ██║█████╗  
   ██║      ██║   ██║         ╚════██║██╔═══╝ ██║   ██║██║   ██║██╔══╝  
   ██║      ██║   ███████╗    ███████║██║     ╚██████╔╝╚██████╔╝██║     
   ╚═╝      ╚═╝   ╚══════╝    ╚══════╝╚═╝      ╚═════╝  ╚═════╝ ╚═╝     (PoC)

aix1: 255               foundry: 64             hpux4: 64               macos1: 60              openvms: 255            stratus1: 255           ultrix1: 60             vmsucx: 128
aix2: 30                freebsd1: 64            irix1: 60               macos2: 64              os2: 64                 stratus2: 30            ultrix2: 30             vmswollongong1: 128
bsdi: 255               freebsd2: 255           irix2: 255              mpeixhp: 200            osf1A: 60               stratus3: 64            ultrix3: 255            vmswollongong2: 30
cisco: 254              hpux1: 30               juniper: 64             netbsd: 255             osf1B: 30               stratus4: 60            vmsmultine: 64          windows1: 32
compa: 64               hpux2: 64               linux1: 64              netgearfvg318: 64       solaris1: 255           sunos1: 60              vmstcpware1: 60         windows2: 128
decpathworks: 30        hpux3: 255              linux2: 255             openbsd: 255            solaris2: 64            sunos2: 255             vmstcpware2: 64

Enter: cisco

+ Spoofin *all* ipv4 ttl
+ Spoofin eth0 ipv6 ttl
+ Spoofin lo ipv6 ttl

Now you look like cisco OS
</pre>
