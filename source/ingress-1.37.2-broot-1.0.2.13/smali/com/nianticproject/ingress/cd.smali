.class final Lcom/nianticproject/ingress/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/m;

.field final synthetic b:Z

.field final synthetic c:Lcom/nianticproject/ingress/cc;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/cc;Lcom/nianticproject/ingress/common/ui/m;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/nianticproject/ingress/cd;->c:Lcom/nianticproject/ingress/cc;

    iput-object p2, p0, Lcom/nianticproject/ingress/cd;->a:Lcom/nianticproject/ingress/common/ui/m;

    iput-boolean p3, p0, Lcom/nianticproject/ingress/cd;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/nianticproject/ingress/cd;->c:Lcom/nianticproject/ingress/cc;

    iget-object v0, v0, Lcom/nianticproject/ingress/cc;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisActivity;->b(Lcom/nianticproject/ingress/NemesisActivity;)Lcom/nianticproject/ingress/AndroidComm;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/cd;->a:Lcom/nianticproject/ingress/common/ui/m;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/ui/m;->m_()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AndroidComm;->a(Z)V

    .line 1056
    iget-boolean v0, p0, Lcom/nianticproject/ingress/cd;->b:Z

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/nianticproject/ingress/cd;->c:Lcom/nianticproject/ingress/cc;

    iget-object v0, v0, Lcom/nianticproject/ingress/cc;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/NemesisActivity;->b()V

    .line 1059
    :cond_0
    return-void
.end method
