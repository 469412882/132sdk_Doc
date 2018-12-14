.class public final Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextBitmapShadowStroke([BLjava/lang/String;IIIIIIIIZFFFFZIIIIF)Z
    .locals 15

    move-object v0, p0

    move/from16 v2, p8

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    array-length v5, v0

    if-nez v5, :cond_0

    return v4

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    and-int/lit8 v5, p7, 0xf

    packed-switch v5, :pswitch_data_0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :goto_1
    invoke-static/range {p1 .. p2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;

    move-result-object v0

    if-eqz p15, :cond_1

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v6, p20

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :cond_1
    if-gtz v2, :cond_2

    invoke-static {v7, v0}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    new-instance v14, Landroid/text/StaticLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    move-object v8, v0

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    invoke-virtual {v14, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v7

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez p9, :cond_3

    move/from16 v8, p9

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    if-eqz v2, :cond_8

    if-nez v8, :cond_4

    return v4

    :cond_4
    const/4 v9, 0x3

    const/4 v10, 0x2

    if-ne v5, v9, :cond_5

    sub-int v5, v2, v6

    div-int/2addr v5, v10

    goto :goto_4

    :cond_5
    if-ne v5, v10, :cond_6

    sub-int v5, v2, v6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    shr-int/lit8 v1, p7, 0x4

    and-int/lit8 v1, v1, 0xf

    packed-switch v1, :pswitch_data_1

    goto :goto_5

    :pswitch_2
    sub-int v1, v8, v7

    div-int/lit8 v4, v1, 0x2

    goto :goto_5

    :pswitch_3
    sub-int v4, v8, v7

    :goto_5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p15, :cond_7

    move/from16 v3, p16

    move/from16 v4, p17

    move/from16 v5, p18

    move/from16 v6, p19

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    invoke-virtual {v14, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/text/TextPaint;->setARGB(IIII)V

    invoke-virtual {v14, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getFontSizeAccordingHeight(I)I
    .locals 8

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    return v5

    :cond_1
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v6, "SghMNy"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v2, v7, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p0, v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    return-void
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;
    .locals 4

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const-string p1, ".ttf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a:Landroid/content/Context;

    invoke-static {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p1, "Cocos2dxBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error to create ttf type face: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a:Landroid/content/Context;

    return-void
.end method
