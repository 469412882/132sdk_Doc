.class final Lcom/tencent/bugly/agent/GameAgent$6;
.super Ljava/lang/Object;
.source "GameAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/agent/GameAgent;->setUserSceneTag(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sceneId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/tencent/bugly/agent/GameAgent$6;->val$sceneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "crashreport.CrashReport"

    .line 447
    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUserSceneTag"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->access$600()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/tencent/bugly/agent/GameAgent$6;->val$sceneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
