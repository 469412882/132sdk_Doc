.class final Lcom/tencent/bugly/agent/GameAgent$9;
.super Ljava/lang/Object;
.source "GameAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/agent/GameAgent;->setSdkConfig(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/tencent/bugly/agent/GameAgent$9;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/agent/GameAgent$9;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "crashreport.CrashReport"

    .line 506
    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "putSdkData"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->access$600()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDK_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/bugly/agent/GameAgent$9;->val$key:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tencent/bugly/agent/GameAgent$9;->val$value:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v7

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
