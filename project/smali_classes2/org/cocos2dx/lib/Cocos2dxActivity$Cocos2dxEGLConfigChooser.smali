.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p0

    return p0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0xf

    new-array v4, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v4, v1

    iget-object v2, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    aget v2, v2, v1

    const/4 v8, 0x1

    aput v2, v4, v8

    const/4 v9, 0x2

    const/16 v2, 0x3023

    aput v2, v4, v9

    iget-object v2, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    aget v2, v2, v8

    const/4 v10, 0x3

    aput v2, v4, v10

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v4, v2

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    aget v3, v3, v9

    const/4 v5, 0x5

    aput v3, v4, v5

    const/4 v3, 0x6

    const/16 v6, 0x3021

    aput v6, v4, v3

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    aget v3, v3, v10

    const/4 v6, 0x7

    aput v3, v4, v6

    const/16 v3, 0x8

    const/16 v6, 0x3025

    aput v6, v4, v3

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    aget v3, v3, v2

    const/16 v6, 0x9

    aput v3, v4, v6

    const/16 v3, 0xa

    const/16 v6, 0x3026

    aput v6, v4, v3

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    aget v3, v3, v5

    const/16 v5, 0xb

    aput v3, v4, v5

    const/16 v3, 0xc

    const/16 v5, 0x3040

    aput v5, v4, v3

    const/16 v3, 0xd

    aput v2, v4, v3

    const/16 v2, 0xe

    const/16 v3, 0x3038

    aput v3, v4, v2

    new-array v11, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v15, v8, [I

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v11

    move-object v7, v15

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v15, v1

    if-lez v2, :cond_0

    aget-object v1, v11, v1

    return-object v1

    :cond_0
    new-array v2, v10, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v2

    move-object v4, v15

    move-object v15, v3

    move-object/from16 v17, v4

    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_5

    aget v3, v4, v1

    if-lez v3, :cond_5

    aget v3, v4, v1

    new-array v5, v3, [Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    new-array v6, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v2

    move-object v15, v6

    move/from16 v16, v3

    move-object/from16 v17, v4

    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_4

    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    iget-object v2, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->a:[I

    invoke-direct {v4, v0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;[I)V

    move v2, v3

    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-lt v1, v6, :cond_2

    sub-int/2addr v3, v8

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const-string v2, "cocos2d"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t find EGLConfig match: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", instead of closest one:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v5, v1

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->a:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v1

    :cond_2
    add-int v6, v1, v2

    div-int/2addr v6, v9

    aget-object v7, v5, v6

    invoke-virtual {v4, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->compareTo(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;)I

    move-result v7

    if-gez v7, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    aget-object v7, v6, v2

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct {v4, v0, v10, v11, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "device_policy"

    const-string v2, "Can not select an EGLConfig for rendering."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3038
    .end array-data
.end method
