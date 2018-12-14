.class public Lorg/cocos2dx/lib/Cocos2dxHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/cocos2dx/lib/Cocos2dxMusic; = null

.field private static b:Lorg/cocos2dx/lib/Cocos2dxSound; = null

.field private static c:Landroid/content/res/AssetManager; = null

.field private static d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer; = null

.field private static e:Z = false

.field private static f:Z = false

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Landroid/app/Activity; = null

.field private static j:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener; = null

.field private static k:Ljava/util/Set; = null

.field private static l:Landroid/os/Vibrator; = null

.field private static m:Lcom/enhance/gameservice/IGameTuningService; = null

.field private static n:Z = false

.field private static o:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->k:Ljava/util/Set;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHelper$1;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$1;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->o:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/enhance/gameservice/IGameTuningService;)V
    .locals 0

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    return-void
.end method

.method static synthetic access$1()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2()Landroid/content/ServiceConnection;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->o:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$3([B)V
    .locals 0

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V

    return-void
.end method

.method public static addOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->k:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static conversionEncoding([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static deleteValueForKey(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static disableAccelerometer()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->e:Z

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->e:Z

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    return-void
.end method

.method public static end()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->end()V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->end()V

    return-void
.end method

.method public static fastLoading(I)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v1, p0}, Lcom/enhance/gameservice/IGameTuningService;->boostUp(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->c:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getBoolForKey(Ljava/lang/String;Z)Z
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_3

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDPI()I
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleForKey(Ljava/lang/String;D)D
    .locals 0

    double-to-float p1, p1

    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getFloatForKey(Ljava/lang/String;F)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public static getEffectsVolume()F
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static getFloatForKey(Ljava/lang/String;F)F
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result p0

    return p0

    :cond_1
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getIntegerForKey(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    return p0

    :cond_1
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public static getOnActivityResultListeners()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->k:Ljava/util/Set;

    return-object v0
.end method

.method public static getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTemperature()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v1}, Lcom/enhance/gameservice/IGameTuningService;->getAbstractTemperature()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 3

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    move-object v0, p0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->j:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->g:Ljava/lang/String;

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->getGameRoot()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->h:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->c:Landroid/content/res/AssetManager;

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->c:Landroid/content/res/AssetManager;

    invoke-static {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->l:Landroid/os/Vibrator;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->n:Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/enhance/gameservice/IGameTuningService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.enhance.gameservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->o:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void
.end method

.method public static isActivityVisible()Z
    .locals 1

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->f:Z

    return v0
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method public static onEnterBackground()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->onEnterBackground()V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->onEnterBackground()V

    return-void
.end method

.method public static onEnterForeground()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->onEnterForeground()V

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->onEnterForeground()V

    return-void
.end method

.method public static onPause()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->f:Z

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->f:Z

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    :cond_0
    return-void
.end method

.method public static openURL(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static pauseAllEffects()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseAllEffects()V

    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseEffect(I)V

    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    return-void
.end method

.method public static playEffect(Ljava/lang/String;ZFFF)I
    .locals 6

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;ZFFF)I

    move-result p0

    return p0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeAllEffects()V

    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeEffect(I)V

    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->rewindBackgroundMusic()V

    return-void
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->d:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->setInterval(F)V

    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->setBackgroundVolume(F)V

    return-void
.end method

.method public static setBoolForKey(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDoubleForKey(Ljava/lang/String;D)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    double-to-float p1, p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->j:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHelper$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper$2;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setEffectsVolume(F)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->setEffectsVolume(F)V

    return-void
.end method

.method public static setFPS(I)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v1, p0}, Lcom/enhance/gameservice/IGameTuningService;->setFramePerSecond(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static setFloatForKey(Ljava/lang/String;F)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIntegerForKey(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setKeepScreenOn(Z)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setKeepScreenOn(Z)V

    return-void
.end method

.method public static setLowPowerMode(Z)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v1, p0}, Lcom/enhance/gameservice/IGameTuningService;->setGamePowerSaving(Z)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static setResolutionPercent(I)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->m:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v1, p0}, Lcom/enhance/gameservice/IGameTuningService;->setPreferredResolution(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static setStringForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->i:Landroid/app/Activity;

    const-string v1, "Cocos2dxPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->j:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-interface {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopAllEffects()V

    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->a:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    return-void
.end method

.method public static stopEffect(I)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->b:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    return-void
.end method

.method public static vibrate(F)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->l:Landroid/os/Vibrator;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p0, p0, v1

    float-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
