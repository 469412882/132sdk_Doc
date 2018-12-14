.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    invoke-direct {v0}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 123
    :goto_0
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ge v3, v5, :cond_6

    if-eqz v4, :cond_6

    .line 124
    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 125
    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_5

    if-gt v4, v0, :cond_5

    if-lt v8, v7, :cond_5

    if-le v8, p0, :cond_0

    goto :goto_5

    :cond_0
    if-ne v4, v7, :cond_1

    .line 131
    aput v6, p1, v3

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    if-ne v4, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 134
    aput v4, p1, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-ne v8, v7, :cond_3

    .line 138
    aput v6, p1, v5

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    if-ne v8, p0, :cond_4

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 141
    aput v4, p1, v5

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 127
    :cond_5
    :goto_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 147
    :cond_6
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x1

    :goto_6
    if-ltz v3, :cond_d

    if-eqz v4, :cond_d

    .line 148
    aget v4, p1, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    .line 149
    aget v8, p1, v5

    float-to-int v8, v8

    if-lt v4, v7, :cond_c

    if-gt v4, v0, :cond_c

    if-lt v8, v7, :cond_c

    if-le v8, p0, :cond_7

    goto :goto_b

    :cond_7
    if-ne v4, v7, :cond_8

    .line 155
    aput v6, p1, v3

    :goto_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    if-ne v4, v0, :cond_9

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    .line 158
    aput v4, p1, v3

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_8
    if-ne v8, v7, :cond_a

    .line 162
    aput v6, p1, v5

    :goto_9
    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    if-ne v8, p0, :cond_b

    add-int/lit8 v4, p0, -0x1

    int-to-float v4, v4

    .line 165
    aput v4, p1, v5

    goto :goto_9

    :cond_b
    :goto_a
    add-int/lit8 v3, v3, -0x2

    goto :goto_6

    .line 151
    :cond_c
    :goto_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .line 58
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 0

    if-nez p0, :cond_0

    .line 49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 51
    :cond_0
    sput-object p0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;ILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 98
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
