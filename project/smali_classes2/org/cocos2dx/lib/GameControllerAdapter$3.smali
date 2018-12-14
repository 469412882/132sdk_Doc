.class Lorg/cocos2dx/lib/GameControllerAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Z

.field private final synthetic e:F

.field private final synthetic f:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IIZFZ)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->a:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->b:I

    iput p3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->c:I

    iput-boolean p4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->d:Z

    iput p5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->e:F

    iput-boolean p6, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->a:Ljava/lang/String;

    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->b:I

    iget v2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->c:I

    iget-boolean v3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->d:Z

    iget v4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->e:F

    iget-boolean v5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->f:Z

    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter;->access$2(Ljava/lang/String;IIZFZ)V

    return-void
.end method
