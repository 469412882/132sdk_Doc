.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0x28


# instance fields
.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 44
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 11

    .line 264
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 265
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    .line 266
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 267
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    .line 268
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 269
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p3

    .line 270
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 271
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    .line 273
    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    if-gez v4, :cond_0

    .line 274
    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    new-instance v9, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v10

    add-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v10

    sub-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    new-instance p2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    return-object v4

    .line 280
    :cond_0
    new-array v4, v9, [Lcom/google/zxing/ResultPoint;

    new-instance v9, Lcom/google/zxing/ResultPoint;

    add-float/2addr v3, v10

    add-float/2addr p4, v10

    invoke-direct {v9, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v4, v8

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v10

    sub-float/2addr p2, v10

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, v4, v7

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v10

    add-float/2addr p3, v10

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v5

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v0, v10

    sub-float/2addr p1, v10

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, v4, v6

    return-object v4
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    .line 301
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 307
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private static distanceL2(FFFF)I
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 238
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    move-result p0

    return p0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 5

    .line 221
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->distanceL2(FFFF)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 226
    invoke-static {v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 227
    invoke-static {v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->round(F)I

    move-result v2

    .line 228
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v0, v0, -0x28

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    .line 65
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v2, v2, 0x28

    shr-int/2addr v2, v1

    .line 66
    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    add-int/lit8 v3, v3, -0x28

    shr-int/2addr v3, v1

    .line 67
    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    add-int/lit8 v4, v4, 0x28

    shr-int/2addr v4, v1

    const/4 v5, 0x0

    move v6, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    :goto_0
    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/4 v8, 0x0

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v2, v0, :cond_1

    .line 81
    invoke-direct {p0, v3, v4, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    goto :goto_1

    .line 88
    :cond_1
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v2, v0, :cond_2

    :goto_2
    const/4 v5, 0x1

    goto :goto_6

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 97
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v4, v0, :cond_4

    .line 98
    invoke-direct {p0, v6, v2, v4, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    goto :goto_3

    .line 105
    :cond_4
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v4, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    if-ltz v6, :cond_7

    .line 115
    invoke-direct {p0, v3, v4, v6, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    if-gez v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    if-ltz v3, :cond_a

    .line 132
    invoke-direct {p0, v6, v2, v3, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v3, v3, -0x1

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    if-gez v3, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v8, :cond_c

    const/4 v7, 0x1

    :cond_c
    move v0, v8

    goto :goto_0

    :cond_d
    :goto_6
    if-nez v5, :cond_1a

    if-eqz v7, :cond_1a

    sub-int v0, v2, v6

    const/4 v5, 0x0

    move-object v8, v5

    const/4 v7, 0x1

    :goto_7
    if-ge v7, v0, :cond_f

    int-to-float v8, v6

    sub-int v9, v4, v7

    int-to-float v9, v9

    add-int v10, v6, v7

    int-to-float v10, v10

    int-to-float v11, v4

    .line 156
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-nez v8, :cond_10

    .line 163
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_10
    move-object v9, v5

    const/4 v7, 0x1

    :goto_9
    if-ge v7, v0, :cond_12

    int-to-float v9, v6

    add-int v10, v3, v7

    int-to-float v10, v10

    add-int v11, v6, v7

    int-to-float v11, v11

    int-to-float v12, v3

    .line 169
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_11

    goto :goto_a

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    if-nez v9, :cond_13

    .line 176
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_13
    move-object v7, v5

    const/4 v6, 0x1

    :goto_b
    if-ge v6, v0, :cond_15

    int-to-float v7, v2

    add-int v10, v3, v6

    int-to-float v10, v10

    sub-int v11, v2, v6

    int-to-float v11, v11

    int-to-float v12, v3

    .line 182
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    if-eqz v7, :cond_14

    goto :goto_c

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    :goto_c
    if-nez v7, :cond_16

    .line 189
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    :goto_d
    if-ge v1, v0, :cond_18

    int-to-float v3, v2

    sub-int v5, v4, v1

    int-to-float v5, v5

    sub-int v6, v2, v1

    int-to-float v6, v6

    int-to-float v10, v4

    .line 195
    invoke-direct {p0, v3, v5, v6, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v5

    if-eqz v5, :cond_17

    goto :goto_e

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    :goto_e
    if-nez v5, :cond_19

    .line 202
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 205
    :cond_19
    invoke-direct {p0, v5, v8, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
