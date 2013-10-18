.class public abstract Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;
.super Lcom/nianticproject/ingress/NemesisBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/multiphotos/az;


# instance fields
.field protected c:Ljava/lang/String;

.field private d:Lcom/nianticproject/ingress/multiphotos/av;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;-><init>()V

    return-void
.end method

.method protected static final a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Portal GUID is empty!"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const-string/jumbo v0, "BasePaginatingActivity.guid"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    return-object v1

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final i()Lcom/nianticproject/ingress/multiphotos/av;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->d:Lcom/nianticproject/ingress/multiphotos/av;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "BasePaginatingActivity.guid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->c:Ljava/lang/String;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v0, "BasePaginatingActivity.guid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->c:Ljava/lang/String;

    .line 88
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/multiphotos/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p0}, Lcom/nianticproject/ingress/multiphotos/av;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nianticproject/ingress/multiphotos/az;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->d:Lcom/nianticproject/ingress/multiphotos/av;

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->d:Lcom/nianticproject/ingress/multiphotos/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->c()V

    .line 106
    invoke-super {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onPause()V

    .line 107
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->d:Lcom/nianticproject/ingress/multiphotos/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->a()V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->d:Lcom/nianticproject/ingress/multiphotos/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->b()V

    .line 101
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/NemesisBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Portal GUID is empty!"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const-string/jumbo v0, "BasePaginatingActivity.guid"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x_()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0900ac

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual {p0}, Lcom/nianticproject/ingress/multiphotos/PortalImagePaginatingActivity;->finish()V

    .line 119
    return-void
.end method
