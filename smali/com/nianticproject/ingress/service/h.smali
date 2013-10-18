.class final Lcom/nianticproject/ingress/service/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    .line 189
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/service/i;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->d(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->e(Landroid/content/Intent;)I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/service/h;->a()Ljava/lang/String;

    invoke-interface {p1}, Lcom/nianticproject/ingress/service/i;->f()V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->f(Landroid/content/Intent;)I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/service/h;->a()Ljava/lang/String;

    invoke-interface {p1}, Lcom/nianticproject/ingress/service/i;->e()V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/NemesisService;->g(Landroid/content/Intent;)I

    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "exception"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/q;

    :goto_1
    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/service/i;->a(Lcom/nianticproject/ingress/shared/q;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/shared/q;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "exception"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/nianticproject/ingress/service/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->e(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "exception"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "exception"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/service/h;->a:Landroid/content/Intent;

    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 220
    return-void
.end method
