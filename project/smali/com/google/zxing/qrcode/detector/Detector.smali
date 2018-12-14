.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4

    .line 233
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 237
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v1, p2, v2, p1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result p1

    .line 241
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const/high16 v1, 0x40e00000    # 7.0f

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    return p1

    .line 244
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    div-float/2addr v0, v1

    return v0

    :cond_1
    add-float/2addr v0, p1

    const/high16 p1, 0x41600000    # 14.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 198
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    div-float/2addr p1, p3

    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/Detector;->round(F)I

    move-result p1

    .line 199
    invoke-static {p0, p2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    div-float/2addr p0, p3

    invoke-static {p0}, Lcom/google/zxing/qrcode/detector/Detector;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1

    add-int/lit8 p0, p0, 0x7

    and-int/lit8 p1, p0, 0x3

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :pswitch_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 186
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p0, p2, p1}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;ILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .locals 21

    move-object/from16 v0, p0

    sub-int v3, p4, p2

    .line 298
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v6, p3, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    move/from16 v4, p1

    move/from16 v1, p2

    move/from16 v5, p3

    move/from16 v2, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v2, p3

    move/from16 v5, p4

    :goto_1
    sub-int v6, v2, v1

    .line 308
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v10, v5, v4

    .line 309
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v11

    neg-int v12, v9

    shr-int/2addr v12, v8

    const/4 v13, -0x1

    if-ge v4, v5, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, -0x1

    :goto_2
    if-ge v1, v2, :cond_3

    const/4 v13, 0x1

    :cond_3
    move v7, v1

    move/from16 v16, v12

    const/4 v15, 0x0

    move v12, v4

    :goto_3
    if-eq v7, v2, :cond_c

    if-eqz v3, :cond_4

    move/from16 v17, v12

    goto :goto_4

    :cond_4
    move/from16 v17, v7

    :goto_4
    if-eqz v3, :cond_5

    move/from16 v18, v2

    move v2, v7

    goto :goto_5

    :cond_5
    move/from16 v18, v2

    move v2, v12

    :goto_5
    if-ne v15, v8, :cond_6

    .line 319
    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move/from16 v19, v3

    move/from16 v3, v17

    invoke-virtual {v8, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_6
    move/from16 v19, v3

    move/from16 v3, v17

    .line 323
    iget-object v8, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v15, v15, 0x1

    :cond_7
    :goto_6
    const/4 v2, 0x3

    if-ne v15, v2, :cond_9

    sub-int/2addr v7, v1

    sub-int/2addr v12, v4

    if-gez v13, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    mul-int v7, v7, v7

    mul-int v12, v12, v12

    add-int/2addr v7, v12

    int-to-double v1, v7

    .line 334
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1

    :cond_9
    add-int v16, v16, v11

    if-lez v16, :cond_b

    if-ne v12, v5, :cond_a

    goto :goto_7

    :cond_a
    add-int/2addr v12, v14

    sub-int v16, v16, v9

    :cond_b
    add-int/2addr v7, v13

    move/from16 v2, v18

    move/from16 v3, v19

    const/4 v8, 0x1

    goto :goto_3

    :cond_c
    :goto_7
    mul-int v6, v6, v6

    mul-int v10, v10, v10

    add-int/2addr v6, v10

    int-to-double v1, v6

    .line 347
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 5

    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v3, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float p3, v3, p3

    const/4 v3, 0x0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    if-le p3, v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float p3, v3, p3

    .line 269
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, p3

    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v4, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, p3

    sub-float p3, v4, p4

    float-to-int p3, p3

    if-gez p3, :cond_2

    sub-int p3, p2, p3

    int-to-float p3, p3

    div-float v2, v4, p3

    goto :goto_1

    .line 277
    :cond_2
    iget-object p4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p4

    if-le p3, p4, :cond_3

    .line 278
    iget-object p4, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p4, p4

    sub-int/2addr p3, p2

    int-to-float p3, p3

    div-float v2, p4, p3

    .line 279
    iget-object p3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, p3

    :goto_1
    int-to-float p3, p1

    sub-int/2addr v3, p1

    int-to-float p4, v3

    mul-float p4, p4, v2

    add-float/2addr p3, p4

    float-to-int p3, p3

    .line 283
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p2

    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    add-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    return p2
.end method

.method public createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 18

    move/from16 v0, p5

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    sub-float v9, v0, v1

    if-eqz p4, :cond_0

    .line 153
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 154
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    sub-float v2, v9, v2

    move v15, v0

    move v14, v1

    move v7, v2

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v1, v2

    move v14, v0

    move v15, v1

    move v7, v9

    :goto_0
    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v3, 0x40600000    # 3.5f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v8, 0x40600000    # 3.5f

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move v4, v9

    move v6, v7

    invoke-static/range {v2 .. v17}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    return-object v0
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Hashtable;)Lcom/google/zxing/common/DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Hashtable;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object p1

    return-object p1
.end method

.method protected findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    mul-float p4, p4, p1

    float-to-int p4, p4

    sub-int v0, p2, p4

    const/4 v1, 0x0

    .line 369
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 370
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v6, p2, v4

    int-to-float p2, v6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 372
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_0
    sub-int p2, p3, p4

    .line 375
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 376
    iget-object p2, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v7, p2, v5

    int-to-float p2, v7

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 378
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 381
    :cond_1
    new-instance p2, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object v2, p2

    move v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 390
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object p1

    return-object p1
.end method

.method protected getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method protected processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v6

    .line 88
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v7

    .line 89
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 91
    invoke-virtual {p0, v6, v7, p1}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 93
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 95
    :cond_0
    invoke-static {v6, v7, p1, v0}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v8

    .line 96
    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    const/4 v4, 0x0

    .line 101
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v2

    array-length v2, v2

    const/4 v9, 0x4

    if-lez v2, :cond_1

    .line 104
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    add-float/2addr v2, v5

    .line 105
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v10

    sub-float/2addr v5, v10

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v10

    add-float/2addr v5, v10

    const/high16 v10, 0x40400000    # 3.0f

    int-to-float v3, v3

    div-float/2addr v10, v3

    sub-float/2addr v1, v10

    .line 110
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v3

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v10

    sub-float/2addr v2, v10

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 111
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v3

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v10

    sub-float/2addr v5, v10

    mul-float v1, v1, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x4

    :goto_0
    const/16 v5, 0x10

    if-gt v3, v5, :cond_1

    int-to-float v5, v3

    .line 116
    :try_start_0
    invoke-virtual {p0, v0, v2, v1, v5}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v5

    goto :goto_1

    :catch_0
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v4

    :goto_1
    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, p1

    move-object v4, v10

    move v5, v8

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-static {v1, v0, v8}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v10, :cond_2

    .line 135
    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    aput-object p1, v3, v2

    aput-object v6, v3, v4

    aput-object v7, v3, v1

    goto :goto_2

    .line 137
    :cond_2
    new-array v5, v9, [Lcom/google/zxing/ResultPoint;

    aput-object p1, v5, v2

    aput-object v6, v5, v4

    aput-object v7, v5, v1

    aput-object v10, v5, v3

    move-object v3, v5

    .line 139
    :goto_2
    new-instance p1, Lcom/google/zxing/common/DetectorResult;

    invoke-direct {p1, v0, v3}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object p1
.end method
