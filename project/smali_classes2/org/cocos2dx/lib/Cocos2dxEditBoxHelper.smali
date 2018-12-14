.class public Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Cocos2dxEditBoxHelper"

.field private static b:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static c:Lorg/cocos2dx/lib/ResizeLayout;

.field private static d:Landroid/util/SparseArray;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/ResizeLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->c:Lorg/cocos2dx/lib/ResizeLayout;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxActivity;

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public static __editBoxEditingChanged(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingChanged(ILjava/lang/String;)V

    return-void
.end method

.method public static __editBoxEditingDidBegin(I)V
    .locals 0

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingDidBegin(I)V

    return-void
.end method

.method public static __editBoxEditingDidEnd(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->editBoxEditingDidEnd(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$0()Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method

.method static synthetic access$1()Lorg/cocos2dx/lib/ResizeLayout;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->c:Lorg/cocos2dx/lib/ResizeLayout;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static closeKeyboard(I)V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    :cond_0
    return-void
.end method

.method public static convertToSP(F)I
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static createEditBox(IIIIF)I
    .locals 9

    sget v6, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->e:I

    sget-object v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v8, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    move-object v0, v8

    move v1, p4

    move v2, p3

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;-><init>(FIIIII)V

    invoke-virtual {v7, v8}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->e:I

    add-int/lit8 p1, p0, 0x1

    sput p1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->e:I

    return p0
.end method

.method private static native editBoxEditingChanged(ILjava/lang/String;)V
.end method

.method private static native editBoxEditingDidBegin(I)V
.end method

.method private static native editBoxEditingDidEnd(ILjava/lang/String;)V
.end method

.method public static openKeyboard(I)V
    .locals 2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setSoftKeyboardShown(Z)V

    :cond_0
    return-void
.end method

.method public static removeEditBox(I)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$2;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setEditBoxViewRect(IIIII)V
    .locals 8

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$13;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setFont(ILjava/lang/String;F)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$3;-><init>(ILjava/lang/String;F)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setFontColor(IIIII)V
    .locals 8

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;

    move-object v1, v7

    move v2, p0

    move v3, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$4;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setInputFlag(II)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$12;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$12;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setInputMode(II)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$11;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$11;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMaxLength(II)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$7;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$7;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setPlaceHolderText(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$5;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setPlaceHolderTextColor(IIIII)V
    .locals 8

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$6;

    move-object v1, v7

    move v2, p0

    move v3, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$6;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setReturnType(II)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$10;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setText(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$9;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$9;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setVisible(IZ)V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$8;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
