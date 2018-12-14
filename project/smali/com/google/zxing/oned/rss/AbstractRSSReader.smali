.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# static fields
.field private static final MAX_AVG_VARIANCE:I = 0x33

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0x66

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field protected final dataCharacterCounters:[I

.field protected final decodeFinderCounters:[I

.field protected final evenCounts:[I

.field protected final evenRoundingErrors:[F

.field protected final oddCounts:[I

.field protected final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, 0x4

    .line 38
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    const/16 v1, 0x8

    .line 39
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 40
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 42
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 43
    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    return-void
.end method

.method protected static count([I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 60
    aget v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected static decrement([I[F)V
    .locals 5

    const/4 v0, 0x0

    .line 79
    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 80
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 81
    aget v4, p1, v0

    cmpg-float v4, v4, v1

    if-gez v4, :cond_0

    .line 82
    aget v1, p1, v0

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    aget p1, p0, v3

    sub-int/2addr p1, v2

    aput p1, p0, v3

    return-void
.end method

.method protected static increment([I[F)V
    .locals 5

    const/4 v0, 0x0

    .line 67
    aget v1, p1, v0

    const/4 v2, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 68
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 69
    aget v4, p1, v0

    cmpl-float v4, v4, v1

    if-lez v4, :cond_0

    .line 70
    aget v1, p1, v0

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    aget p1, p0, v3

    add-int/2addr p1, v2

    aput p1, p0, v3

    return-void
.end method

.method protected static isFinderPattern([I)Z
    .locals 6

    const/4 v0, 0x0

    .line 90
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    .line 91
    aget v3, p0, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    aget v4, p0, v4

    add-int/2addr v3, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f4aaaab

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_4

    const v3, 0x3f649249

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    const v1, 0x7fffffff

    const/high16 v3, -0x80000000

    const/4 v1, 0x0

    const v4, 0x7fffffff

    .line 97
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_2

    .line 98
    aget v5, p0, v1

    if-le v5, v3, :cond_0

    move v3, v5

    :cond_0
    if-ge v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v4, v4, 0xa

    if-ge v3, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    return v0
.end method

.method protected static parseFinderValue([I[[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 49
    aget-object v1, p1, v0

    const/16 v2, 0x66

    invoke-static {p0, v1, v2}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[II)I

    move-result v1

    const/16 v2, 0x33

    if-ge v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method