.class Lorg/cocos2dx/lib/GameControllerAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:F

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IIFZ)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->a:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->b:I

    iput p3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->c:I

    iput p4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->d:F

    iput-boolean p5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->a:Ljava/lang/String;

    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->b:I

    iget v2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->c:I

    iget v3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->d:F

    iget-boolean v4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$4;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/GameControllerAdapter;->access$3(Ljava/lang/String;IIFZ)V

    return-void
.end method
