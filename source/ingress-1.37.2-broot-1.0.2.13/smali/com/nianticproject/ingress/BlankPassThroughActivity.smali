.class public Lcom/nianticproject/ingress/BlankPassThroughActivity;
.super Lcom/nianticproject/ingress/NemesisBaseActivity;
.source "SourceFile"


# instance fields
.field private c:Lcom/nianticproject/ingress/aj;

.field private d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;-><init>()V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/a/d/u;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/nianticproject/ingress/aj;->a:Lcom/nianticproject/ingress/aj;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nianticproject/ingress/BlankPassThroughActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "op"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v0, "location"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "BlankPassThroughActivity"

    return-object v0
.end method

.method public final a(Ljava/io/File;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->c:Lcom/nianticproject/ingress/aj;

    sget-object v1, Lcom/nianticproject/ingress/aj;->a:Lcom/nianticproject/ingress/aj;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    .line 92
    invoke-static {p0, v0, p1}, Lcom/nianticproject/ingress/PortalAddActivity;->a(Landroid/content/Context;Lcom/google/a/d/u;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/BlankPassThroughActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/nianticproject/ingress/BlankPassThroughActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string/jumbo v0, "op"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/aj;

    iput-object v0, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->c:Lcom/nianticproject/ingress/aj;

    .line 58
    const-string/jumbo v0, "args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->d:Landroid/os/Bundle;

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/BlankPassThroughActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 61
    const-string/jumbo v0, "op"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/aj;

    iput-object v0, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->c:Lcom/nianticproject/ingress/aj;

    .line 62
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->d:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onResume()V

    .line 70
    sget-object v0, Lcom/nianticproject/ingress/ai;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->c:Lcom/nianticproject/ingress/aj;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-static {p0}, Lcom/nianticproject/ingress/service/NemesisService;->b(Landroid/content/Context;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string/jumbo v0, "op"

    iget-object v1, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->c:Lcom/nianticproject/ingress/aj;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    const-string/jumbo v0, "args"

    iget-object v1, p0, Lcom/nianticproject/ingress/BlankPassThroughActivity;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    return-void
.end method
