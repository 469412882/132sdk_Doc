.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto/16 :goto_0

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v2, v1, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$12(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$10(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$9(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$8(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$4(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$14(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
