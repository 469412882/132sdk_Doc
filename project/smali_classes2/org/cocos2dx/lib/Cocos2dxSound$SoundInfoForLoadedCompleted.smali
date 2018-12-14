.class public Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public d:F

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;ZFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->a:Z

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->b:F

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->c:F

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->d:F

    const/4 p1, -0x1

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->f:I

    return-void
.end method
