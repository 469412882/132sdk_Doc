.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method private selectBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/Vector;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 110
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1

    .line 117
    new-array v1, v5, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v2, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v6, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v6, v2, v5

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v2, v3

    aput-object v2, v1, v4

    return-object v1

    .line 127
    :cond_1
    new-instance v6, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v0, v6}, Lcom/google/zxing/common/Collections;->insertionSort(Ljava/util/Vector;Lcom/google/zxing/common/Comparator;)V

    .line 144
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v1, -0x2

    if-ge v7, v8, :cond_d

    .line 147
    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v8, :cond_3

    :cond_2
    :goto_1
    const/4 v15, 0x2

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v9, v7, 0x1

    :goto_2
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_2

    .line 153
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v10, :cond_5

    :cond_4
    :goto_3
    const/4 v15, 0x2

    goto/16 :goto_6

    .line 159
    :cond_5
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-float/2addr v11, v12

    .line 161
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v12, v12, v13

    const v14, 0x3d4ccccd    # 0.05f

    if-lez v12, :cond_6

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v11, v9, 0x1

    :goto_4
    if-ge v11, v1, :cond_4

    .line 169
    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v12, :cond_7

    const/4 v15, 0x2

    goto/16 :goto_5

    .line 175
    :cond_7
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v15, v3

    .line 177
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v13

    if-lez v3, :cond_8

    cmpl-float v3, v15, v14

    if-ltz v3, :cond_8

    goto :goto_3

    .line 184
    :cond_8
    new-array v3, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v8, v3, v4

    const/4 v5, 0x1

    aput-object v10, v3, v5

    const/4 v15, 0x2

    aput-object v12, v3, v15

    .line 185
    invoke-static {v3}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 188
    new-instance v12, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v12, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 189
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 190
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    .line 191
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    add-float v12, v2, v5

    .line 194
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    div-float v12, v12, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v12, v12, v16

    const/high16 v16, 0x43340000    # 180.0f

    cmpl-float v16, v12, v16

    if-gtz v16, :cond_c

    const/high16 v16, 0x41100000    # 9.0f

    cmpg-float v12, v12, v16

    if-gez v12, :cond_9

    goto :goto_5

    :cond_9
    sub-float v12, v2, v5

    .line 201
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v16

    div-float v12, v12, v16

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v16, 0x3dcccccd    # 0.1f

    cmpl-float v12, v12, v16

    if-ltz v12, :cond_a

    goto :goto_5

    :cond_a
    mul-float v2, v2, v2

    mul-float v5, v5, v5

    add-float/2addr v2, v5

    float-to-double v13, v2

    .line 207
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    sub-float v5, v4, v2

    .line 209
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v16

    if-ltz v2, :cond_b

    goto :goto_5

    .line 216
    :cond_b
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const v14, 0x3d4ccccd    # 0.05f

    goto/16 :goto_4

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 221
    :cond_d
    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 222
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v1, 0x0

    .line 223
    :goto_8
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 224
    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    return-object v0

    .line 230
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Hashtable;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 234
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 237
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    int-to-float v5, v3

    const/high16 v6, 0x43640000    # 228.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v5, 0x3

    :cond_2
    const/4 p1, 0x5

    .line 250
    new-array p1, p1, [I

    add-int/lit8 v7, v5, -0x1

    :goto_1
    if-ge v7, v3, :cond_d

    aput v1, p1, v1

    aput v1, p1, v0

    const/4 v8, 0x2

    aput v1, p1, v8

    aput v1, p1, v6

    const/4 v9, 0x4

    aput v1, p1, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v4, :cond_b

    .line 260
    invoke-virtual {v2, v10, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-eqz v12, :cond_4

    and-int/lit8 v12, v11, 0x1

    if-ne v12, v0, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 265
    :cond_3
    aget v12, p1, v11

    add-int/2addr v12, v0

    aput v12, p1, v11

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v11, 0x1

    if-nez v12, :cond_a

    if-ne v11, v9, :cond_9

    .line 269
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 270
    invoke-virtual {p0, p1, v7, v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_5
    add-int/2addr v10, v0

    if-ge v10, v4, :cond_6

    .line 274
    invoke-virtual {v2, v10, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_6
    add-int/lit8 v10, v10, -0x1

    :cond_7
    aput v1, p1, v1

    aput v1, p1, v0

    aput v1, p1, v8

    aput v1, p1, v6

    aput v1, p1, v9

    const/4 v11, 0x0

    goto :goto_3

    .line 285
    :cond_8
    aget v11, p1, v8

    aput v11, p1, v1

    .line 286
    aget v11, p1, v6

    aput v11, p1, v0

    .line 287
    aget v11, p1, v9

    aput v11, p1, v8

    aput v0, p1, v6

    aput v1, p1, v9

    const/4 v11, 0x3

    goto :goto_3

    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 293
    aget v12, p1, v11

    add-int/2addr v12, v0

    aput v12, p1, v11

    goto :goto_3

    .line 296
    :cond_a
    aget v12, p1, v11

    add-int/2addr v12, v0

    aput v12, p1, v11

    :goto_3
    add-int/2addr v10, v0

    goto :goto_2

    .line 301
    :cond_b
    invoke-static {p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 302
    invoke-virtual {p0, p1, v7, v4}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    :cond_c
    add-int/2addr v7, v5

    goto :goto_1

    .line 305
    :cond_d
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 306
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    .line 307
    :goto_4
    array-length v3, p1

    if-ge v2, v3, :cond_e

    .line 308
    aget-object v3, p1, v2

    .line 309
    invoke-static {v3}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 310
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v4, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 313
    :cond_e
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 314
    sget-object p1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object p1

    .line 316
    :cond_f
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 317
    :goto_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    return-object p1
.end method
