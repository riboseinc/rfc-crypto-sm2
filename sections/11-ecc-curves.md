# SM2 ECC Curve OID {#sm2-curve}

<!--TODO: what other curves are available? GmSSL lists 3 other ones.-->

This section provides the curve OID of the "SM2 Recommended Curve"
[@!GBT.32918.5-2017] described in (#sm2-algorithm), according to the method of
[@RFC6637].

We specify the curve OID of the "SM2 Recommended Curve" to be the registered
OID entry of "SM2 Elliptic Curve Cryptography" according to [@GMT-0006-2012],
which is "1.2.156.10197.1.301".

The table below specifies the exact sequence of bytes of the mentioned curve:

ASN.1 Object Identifier | OID len | Curve OID bytes in hexadecimal representation | Curve name
:------|:-----|:----|:---
1.2.156.10197.1.301 | 8 | 2A 81 1C CF 55 01 82 2D | SM2 Recommended

The complete ASN.1 DER encoding for the SM2 Recommended curve
OID is "06 08 2A 81 1C CF 55 01 82 2D", from which the first entry in
the table above is constructed by omitting the first two octets. Only
the truncated sequence of octets is the valid representation of a curve
OID.
