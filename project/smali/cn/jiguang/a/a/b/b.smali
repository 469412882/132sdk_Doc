.class final Lcn/jiguang/a/a/b/b;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcn/jiguang/a/a/b/a;


# direct methods
.method public constructor <init>(Lcn/jiguang/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-static {v0, p1}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;I)I

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-static {v0, p1}, Lcn/jiguang/a/a/b/a;->a(Lcn/jiguang/a/a/b/a;Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcn/jiguang/a/a/b/b;->a:Lcn/jiguang/a/a/b/a;

    invoke-virtual {p1}, Lcn/jiguang/a/a/b/a;->d()V

    return-void
.end method
