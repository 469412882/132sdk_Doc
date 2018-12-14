.class public final Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Object;
.source "ResultMetadataType.java"


# static fields
.field public static final BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

.field public static final ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

.field public static final ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

.field public static final ORIENTATION:Lcom/google/zxing/ResultMetadataType;

.field public static final OTHER:Lcom/google/zxing/ResultMetadataType;

.field public static final POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

.field public static final SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

.field private static final VALUES:Ljava/util/Hashtable;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->VALUES:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->OTHER:Lcom/google/zxing/ResultMetadataType;

    .line 47
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "ORIENTATION"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 58
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "BYTE_SEGMENTS"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 64
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 69
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "ISSUE_NUMBER"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    .line 75
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "SUGGESTED_PRICE"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    .line 81
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "POSSIBLE_COUNTRY"

    invoke-direct {v0, v1}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/zxing/ResultMetadataType;->name:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .locals 1

    if-eqz p0, :cond_2

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultMetadataType;

    if-nez p0, :cond_1

    .line 104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    return-object p0

    .line 100
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/zxing/ResultMetadataType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/zxing/ResultMetadataType;->name:Ljava/lang/String;

    return-object v0
.end method
