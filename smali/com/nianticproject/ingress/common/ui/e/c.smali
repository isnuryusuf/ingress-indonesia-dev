.class public final Lcom/nianticproject/ingress/common/ui/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/ui/e/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/ui/e/d;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/i;->setVisible(Z)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    .line 56
    :cond_1
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/e/d;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 43
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/e/c;->a:Lcom/nianticproject/ingress/common/ui/e/d;

    iget-boolean v0, v0, Lcom/nianticproject/ingress/common/ui/e/d;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->x()Lcom/nianticproject/ingress/common/ui/elements/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/i;->setVisible(Z)V

    .line 47
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 42
    goto :goto_0
.end method
