.class Lorg/cocos2dx/lua/Sdk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lua/Sdk$2;->a:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    iput p3, p0, Lorg/cocos2dx/lua/Sdk$2;->c:I

    iput-object p4, p0, Lorg/cocos2dx/lua/Sdk$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lorg/cocos2dx/lua/Sdk$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/lua/Sdk$2;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, ""

    iget-object v1, p0, Lorg/cocos2dx/lua/Sdk$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/cocos2dx/lua/Sdk$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    iget-object v2, p0, Lorg/cocos2dx/lua/Sdk$2;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iget v4, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    iget v5, p0, Lorg/cocos2dx/lua/Sdk$2;->c:I

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Hashtable;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    iget v2, p0, Lorg/cocos2dx/lua/Sdk$2;->c:I

    mul-int v1, v1, v2

    new-array v3, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lorg/cocos2dx/lua/Sdk$2;->c:I

    if-lt v2, v4, :cond_1

    iget v0, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    iget v1, p0, Lorg/cocos2dx/lua/Sdk$2;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    iget v5, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    iget v9, p0, Lorg/cocos2dx/lua/Sdk$2;->c:I

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lorg/cocos2dx/lua/Sdk$2;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/lua/Sdk$2;->e:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lorg/cocos2dx/lua/Sdk;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    if-lt v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    mul-int v5, v5, v2

    add-int/2addr v5, v4

    const/high16 v6, -0x1000000

    aput v6, v3, v5

    goto :goto_2

    :cond_3
    iget v5, p0, Lorg/cocos2dx/lua/Sdk$2;->b:I

    mul-int v5, v5, v2

    add-int/2addr v5, v4

    const/4 v6, -0x1

    aput v6, v3, v5
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    return-void
.end method
