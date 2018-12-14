.class Lorg/cocos2dx/lib/GameControllerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->a:Ljava/lang/String;

    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->a:Ljava/lang/String;

    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$1;->b:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/GameControllerAdapter;->access$0(Ljava/lang/String;I)V

    return-void
.end method
