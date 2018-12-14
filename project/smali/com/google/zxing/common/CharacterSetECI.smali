.class public final Lcom/google/zxing/common/CharacterSetECI;
.super Lcom/google/zxing/common/ECI;
.source "CharacterSetECI.java"


# static fields
.field private static NAME_TO_ECI:Ljava/util/Hashtable;

.field private static VALUE_TO_ECI:Ljava/util/Hashtable;


# instance fields
.field private final encodingName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/zxing/common/ECI;-><init>(I)V

    .line 61
    iput-object p2, p0, Lcom/google/zxing/common/CharacterSetECI;->encodingName:Ljava/lang/String;

    return-void
.end method

.method private static addCharacterSet(ILjava/lang/String;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 70
    sget-object v1, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object p0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addCharacterSet(I[Ljava/lang/String;)V
    .locals 4

    .line 75
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 76
    sget-object v2, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_0
    array-length p0, p1

    if-ge v1, p0, :cond_0

    .line 78
    sget-object p0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 104
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->initialize()V

    .line 107
    :cond_0
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 3

    .line 89
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->initialize()V

    :cond_0
    if-ltz p0, :cond_2

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    return-object p0

    .line 93
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad ECI value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initialize()V
    .locals 5

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Hashtable;

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Hashtable;

    const-string v0, "Cp437"

    const/4 v1, 0x0

    .line 36
    invoke-static {v1, v0}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 37
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ISO8859_1"

    aput-object v3, v2, v1

    const-string v3, "ISO-8859-1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v4, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;)V

    const-string v2, "Cp437"

    .line 38
    invoke-static {v0, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 39
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "ISO8859_1"

    aput-object v3, v2, v1

    const-string v3, "ISO-8859-1"

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;)V

    const-string v2, "ISO8859_2"

    const/4 v3, 0x4

    .line 40
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_3"

    const/4 v3, 0x5

    .line 41
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_4"

    const/4 v3, 0x6

    .line 42
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_5"

    const/4 v3, 0x7

    .line 43
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_6"

    const/16 v3, 0x8

    .line 44
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_7"

    const/16 v3, 0x9

    .line 45
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_8"

    const/16 v3, 0xa

    .line 46
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_9"

    const/16 v3, 0xb

    .line 47
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_10"

    const/16 v3, 0xc

    .line 48
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_11"

    const/16 v3, 0xd

    .line 49
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_13"

    const/16 v3, 0xf

    .line 50
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_14"

    const/16 v3, 0x10

    .line 51
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_15"

    const/16 v3, 0x11

    .line 52
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    const-string v2, "ISO8859_16"

    const/16 v3, 0x12

    .line 53
    invoke-static {v3, v2}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(ILjava/lang/String;)V

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "SJIS"

    aput-object v2, v0, v1

    const-string v1, "Shift_JIS"

    aput-object v1, v0, v4

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lcom/google/zxing/common/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEncodingName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->encodingName:Ljava/lang/String;

    return-object v0
.end method
