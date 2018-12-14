.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v0, 0x18

    .line 39
    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "00"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Integer;

    const/16 v5, 0x12

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x1

    aput-object v3, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "01"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Integer;

    const/16 v7, 0xe

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "02"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v8, "10"

    aput-object v8, v3, v4

    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v8, v3, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v1

    aput-object v3, v0, v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "11"

    aput-object v8, v3, v4

    new-instance v8, Ljava/lang/Integer;

    const/4 v10, 0x6

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v6

    const/4 v8, 0x4

    aput-object v3, v0, v8

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "12"

    aput-object v8, v3, v4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v6

    const/4 v8, 0x5

    aput-object v3, v0, v8

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "13"

    aput-object v8, v3, v4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v6

    aput-object v3, v0, v10

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "15"

    aput-object v8, v3, v4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v6

    const/4 v8, 0x7

    aput-object v3, v0, v8

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "17"

    aput-object v8, v3, v4

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v3, v6

    const/16 v8, 0x8

    aput-object v3, v0, v8

    new-array v3, v1, [Ljava/lang/Object;

    const-string v11, "20"

    aput-object v11, v3, v4

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v3, v6

    const/16 v11, 0x9

    aput-object v3, v0, v11

    new-array v3, v2, [Ljava/lang/Object;

    const-string v11, "21"

    aput-object v11, v3, v4

    sget-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v11, v3, v6

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v3, v1

    const/16 v11, 0xa

    aput-object v3, v0, v11

    new-array v3, v2, [Ljava/lang/Object;

    const-string v12, "22"

    aput-object v12, v3, v4

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v12, v3, v6

    new-instance v12, Ljava/lang/Integer;

    const/16 v13, 0x1d

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v3, v1

    const/16 v12, 0xb

    aput-object v3, v0, v12

    new-array v3, v2, [Ljava/lang/Object;

    const-string v12, "30"

    aput-object v12, v3, v4

    sget-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v12, v3, v6

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v3, v1

    const/16 v12, 0xc

    aput-object v3, v0, v12

    new-array v3, v2, [Ljava/lang/Object;

    const-string v13, "37"

    aput-object v13, v3, v4

    sget-object v13, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v13, v3, v6

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v3, v1

    const/16 v13, 0xd

    aput-object v3, v0, v13

    new-array v3, v2, [Ljava/lang/Object;

    const-string v14, "90"

    aput-object v14, v3, v4

    sget-object v14, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v14, v3, v6

    new-instance v14, Ljava/lang/Integer;

    const/16 v15, 0x1e

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v3, v1

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v14, "91"

    aput-object v14, v3, v4

    sget-object v14, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v14, v3, v6

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v3, v1

    const/16 v14, 0xf

    aput-object v3, v0, v14

    new-array v3, v2, [Ljava/lang/Object;

    const-string v16, "92"

    aput-object v16, v3, v4

    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v16, v3, v6

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v3, v1

    const/16 v14, 0x10

    aput-object v3, v0, v14

    new-array v3, v2, [Ljava/lang/Object;

    const-string v14, "93"

    aput-object v14, v3, v4

    sget-object v14, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v14, v3, v6

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v14, v3, v1

    const/16 v14, 0x11

    aput-object v3, v0, v14

    new-array v3, v2, [Ljava/lang/Object;

    const-string v16, "94"

    aput-object v16, v3, v4

    sget-object v16, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v16, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "95"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x13

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "96"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "97"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x15

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "98"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x16

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "99"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x17

    aput-object v3, v0, v7

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/16 v0, 0x17

    .line 75
    new-array v0, v0, [[Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "240"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "241"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v6

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "242"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "250"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "251"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/4 v7, 0x4

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "253"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/4 v7, 0x5

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "254"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v10

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "400"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/4 v7, 0x7

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "401"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v8

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "402"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x9

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "403"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v11

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "410"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0xb

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "411"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v12

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "412"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v13

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "413"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0xe

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "414"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0xf

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "420"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x10

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "421"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v15, 0xf

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v14

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "422"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "423"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v15, 0xf

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x13

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "424"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v9

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "425"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x15

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "426"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x16

    aput-object v3, v0, v7

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    const/16 v0, 0x39

    .line 104
    new-array v0, v0, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "310"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v4

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "311"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v6

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "312"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "313"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "314"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/4 v7, 0x4

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "315"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/4 v7, 0x5

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "316"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v10

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "320"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/4 v7, 0x7

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "321"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v8

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "322"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x9

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "323"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v11

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "324"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0xb

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "325"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v12

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "326"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v13

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "327"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0xe

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "328"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0xf

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "329"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x10

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "330"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v14

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "331"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "332"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x13

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "333"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v9

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "334"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x15

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "335"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x16

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "336"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x17

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "340"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x18

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "341"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x19

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "342"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x1a

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "343"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x1b

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "344"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x1c

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "345"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x1d

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "346"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x1e

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "347"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x1f

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "348"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x20

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "349"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x21

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "350"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x22

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "351"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x23

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "352"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x24

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "353"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x25

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "354"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x26

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "355"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x27

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "356"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x28

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "357"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x29

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "360"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x2a

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "361"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x2b

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "362"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x2c

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "363"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x2d

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "364"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x2e

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "365"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x2f

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "366"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x30

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "367"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x31

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "368"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x32

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "369"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v7, 0x33

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "390"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v15, 0xf

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x34

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "391"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x35

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "392"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v15, 0xf

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x36

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "393"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x37

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "703"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v15, 0x1e

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x38

    aput-object v3, v0, v7

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    new-array v0, v14, [[Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "7001"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "7002"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v14, 0x1e

    invoke-direct {v7, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v6

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "7003"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "8001"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    const/16 v14, 0xe

    invoke-direct {v7, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "8002"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/4 v7, 0x4

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "8003"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v9, 0x1e

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/4 v7, 0x5

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "8004"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v10

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "8005"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/4 v7, 0x7

    aput-object v3, v0, v7

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "8006"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    aput-object v3, v0, v8

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "8007"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x1e

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    const/16 v7, 0x9

    aput-object v3, v0, v7

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "8008"

    aput-object v7, v3, v4

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v7, v3, v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v1

    aput-object v3, v0, v11

    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "8018"

    aput-object v7, v3, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v3, v6

    const/16 v5, 0xb

    aput-object v3, v0, v5

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "8020"

    aput-object v5, v3, v4

    sget-object v5, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v5, v3, v6

    new-instance v5, Ljava/lang/Integer;

    const/16 v7, 0x19

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v1

    aput-object v3, v0, v12

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "8100"

    aput-object v5, v3, v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v6

    aput-object v3, v0, v13

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "8101"

    aput-object v5, v3, v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v6

    const/16 v5, 0xe

    aput-object v3, v0, v5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "8102"

    aput-object v5, v3, v4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v6

    const/16 v5, 0xf

    aput-object v3, v0, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "8110"

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 200
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 205
    :goto_0
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 206
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 207
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    .line 208
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :cond_2
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    .line 215
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 218
    :cond_5
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 220
    :goto_1
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v6, v6

    if-ge v4, v6, :cond_8

    .line 221
    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v6, v6, v4

    aget-object v6, v6, v0

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 222
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v4

    aget-object v0, v0, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_6

    .line 223
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v4

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_6
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v4

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    .line 230
    :goto_2
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    const/4 v6, 0x4

    if-ge v3, v4, :cond_b

    .line 231
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 232
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_9

    .line 233
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 235
    :cond_9
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 239
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_c

    .line 240
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 243
    :cond_c
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 245
    :goto_3
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v4

    if-ge v3, v4, :cond_f

    .line 246
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v4, v4, v3

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 247
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_d

    .line 248
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_d
    sget-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v6, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 254
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 258
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p0, :cond_0

    .line 259
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-ge v1, p1, :cond_1

    .line 265
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 268
    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-ge v1, p1, :cond_0

    .line 277
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 281
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
