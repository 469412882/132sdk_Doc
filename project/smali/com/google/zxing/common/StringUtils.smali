.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "file.encoding"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v0, "SJIS"

    .line 36
    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 51
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 57
    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    aget-byte v1, v0, v4

    const/16 v5, -0x11

    if-ne v1, v5, :cond_1

    aget-byte v1, v0, v3

    const/16 v5, -0x45

    if-ne v1, v5, :cond_1

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    const/16 v5, -0x41

    if-ne v1, v5, :cond_1

    const-string v0, "UTF-8"

    return-object v0

    .line 70
    :cond_1
    array-length v1, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v5, v1, :cond_17

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-eqz v8, :cond_17

    .line 85
    :cond_2
    aget-byte v15, v0, v5

    const/16 v4, 0xff

    and-int/2addr v15, v4

    const/16 v2, 0xbf

    const/16 v3, 0x80

    if-lt v15, v3, :cond_3

    if-gt v15, v2, :cond_3

    if-lez v9, :cond_6

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    if-lez v9, :cond_4

    const/4 v8, 0x0

    :cond_4
    const/16 v3, 0xc0

    if-lt v15, v3, :cond_6

    const/16 v3, 0xfd

    if-gt v15, v3, :cond_6

    move v3, v15

    :goto_1
    and-int/lit8 v10, v3, 0x40

    if-eqz v10, :cond_5

    add-int/lit8 v9, v9, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x1

    :cond_6
    :goto_2
    const/16 v3, 0xc3

    const/16 v2, 0xc2

    if-eq v15, v2, :cond_7

    if-ne v15, v3, :cond_a

    :cond_7
    add-int/lit8 v3, v1, -0x1

    if-ge v5, v3, :cond_a

    add-int/lit8 v3, v5, 0x1

    .line 112
    aget-byte v3, v0, v3

    and-int/2addr v3, v4

    const/16 v4, 0xbf

    if-gt v3, v4, :cond_a

    if-ne v15, v2, :cond_8

    const/16 v2, 0xa0

    if-ge v3, v2, :cond_9

    :cond_8
    const/16 v2, 0xc3

    if-ne v15, v2, :cond_a

    const/16 v2, 0x80

    if-lt v3, v2, :cond_a

    :cond_9
    const/4 v13, 0x1

    :cond_a
    const/16 v2, 0x7f

    const/16 v3, 0x9f

    if-lt v15, v2, :cond_b

    if-gt v15, v3, :cond_b

    const/4 v6, 0x0

    :cond_b
    const/16 v2, 0xa1

    if-lt v15, v2, :cond_c

    const/16 v2, 0xdf

    if-gt v15, v2, :cond_c

    if-nez v14, :cond_c

    add-int/lit8 v12, v12, 0x1

    :cond_c
    if-nez v14, :cond_f

    const/16 v2, 0xf0

    if-lt v15, v2, :cond_d

    const/16 v2, 0xff

    if-le v15, v2, :cond_e

    :cond_d
    const/16 v2, 0x80

    if-eq v15, v2, :cond_e

    const/16 v2, 0xa0

    if-ne v15, v2, :cond_f

    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    :cond_f
    move v4, v7

    :goto_3
    const/16 v2, 0x81

    if-lt v15, v2, :cond_10

    if-le v15, v3, :cond_11

    :cond_10
    const/16 v2, 0xe0

    if-lt v15, v2, :cond_16

    const/16 v2, 0xef

    if-gt v15, v2, :cond_16

    :cond_11
    if-eqz v14, :cond_12

    move v7, v4

    const/4 v3, 0x1

    goto :goto_7

    .line 147
    :cond_12
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v5, v2, :cond_13

    const/4 v7, 0x0

    :goto_4
    const/4 v14, 0x1

    goto :goto_8

    :cond_13
    add-int/lit8 v2, v5, 0x1

    .line 150
    aget-byte v2, v0, v2

    const/16 v7, 0xff

    and-int/2addr v2, v7

    const/16 v7, 0x40

    if-lt v2, v7, :cond_15

    const/16 v7, 0xfc

    if-le v2, v7, :cond_14

    goto :goto_5

    :cond_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_15
    :goto_5
    const/4 v4, 0x0

    :goto_6
    move v7, v4

    goto :goto_4

    :cond_16
    const/4 v3, 0x1

    move v7, v4

    :goto_7
    const/4 v14, 0x0

    :goto_8
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x3

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_17
    if-lez v9, :cond_18

    const/16 v16, 0x0

    goto :goto_9

    :cond_18
    move/from16 v16, v8

    :goto_9
    if-eqz v7, :cond_19

    .line 169
    sget-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-eqz v0, :cond_19

    const-string v0, "SJIS"

    return-object v0

    :cond_19
    if-eqz v16, :cond_1a

    if-eqz v10, :cond_1a

    const-string v0, "UTF-8"

    return-object v0

    :cond_1a
    if-eqz v7, :cond_1c

    const/4 v0, 0x3

    if-ge v11, v0, :cond_1b

    mul-int/lit8 v12, v12, 0x14

    if-le v12, v1, :cond_1c

    :cond_1b
    const-string v0, "SJIS"

    return-object v0

    :cond_1c
    if-nez v13, :cond_1d

    if-eqz v6, :cond_1d

    const-string v0, "ISO8859_1"

    return-object v0

    .line 188
    :cond_1d
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
