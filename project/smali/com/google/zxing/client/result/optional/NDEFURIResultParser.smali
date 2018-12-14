.class final Lcom/google/zxing/client/result/optional/NDEFURIResultParser;
.super Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;
.source "NDEFURIResultParser.java"


# static fields
.field private static final URI_PREFIXES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "http://www."

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "https://www."

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "http://"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "https://"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "tel:"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "mailto:"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ftp://anonymous:anonymous@"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "ftp://ftp."

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "ftps://"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "sftp://"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "smb://"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "nfs://"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ftp://"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "dav://"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "news:"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "telnet://"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "imap:"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "rtsp://"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "urn:"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "pop:"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "sip:"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "sips:"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "tftp:"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "btspp://"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "btl2cap://"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "btgoep://"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "tcpobex://"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "irdaobex://"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "file://"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "urn:epc:id:"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "urn:epc:tag:"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "urn:epc:pat:"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "urn:epc:raw:"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "urn:epc:"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "urn:nfc:"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/optional/AbstractNDEFResultParser;-><init>()V

    return-void
.end method

.method static decodeURIPayload([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 86
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 88
    sget-object v1, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    sget-object v1, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->URI_PREFIXES:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-string v3, "UTF8"

    invoke-static {p0, v2, v1, v3}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->bytesToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v1}, Lcom/google/zxing/client/result/optional/NDEFRecord;->readRecord([BI)Lcom/google/zxing/client/result/optional/NDEFRecord;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageBegin()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->isMessageEnd()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/client/result/optional/NDEFRecord;->getPayload()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/client/result/optional/NDEFURIResultParser;->decodeURIPayload([B)Ljava/lang/String;

    move-result-object p0

    .line 82
    new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v1, p0, v0}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method
