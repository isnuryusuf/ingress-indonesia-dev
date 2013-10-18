.class final Lcom/nianticproject/ingress/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/o/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/o/c;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/o/d;->b:Lcom/nianticproject/ingress/o/c;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/o/d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 45
    iget-boolean v0, p0, Lcom/nianticproject/ingress/o/d;->a:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/o/d;->b:Lcom/nianticproject/ingress/o/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/o/c;->a(Lcom/nianticproject/ingress/o/c;)Lcom/nianticproject/ingress/NemesisActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/o/d;->b:Lcom/nianticproject/ingress/o/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/o/c;->a(Lcom/nianticproject/ingress/o/c;Z)Z

    .line 49
    invoke-static {}, Lcom/nianticproject/ingress/o/c;->d()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "setKeepScreenOn: ENABLED"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/o/d;->b:Lcom/nianticproject/ingress/o/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/o/c;->a(Lcom/nianticproject/ingress/o/c;)Lcom/nianticproject/ingress/NemesisActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/o/d;->b:Lcom/nianticproject/ingress/o/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/o/c;->a(Lcom/nianticproject/ingress/o/c;Z)Z

    .line 54
    invoke-static {}, Lcom/nianticproject/ingress/o/c;->d()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    const-string/jumbo v1, "setKeepScreenOn: DISABLED"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
