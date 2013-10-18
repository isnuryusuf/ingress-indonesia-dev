.class final Lcom/nianticproject/ingress/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/w;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/NemesisActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/nianticproject/ingress/cc;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/ui/m;)V
    .locals 3
    .parameter

    .prologue
    .line 1051
    instance-of v0, p1, Lcom/nianticproject/ingress/common/scanner/k;

    .line 1052
    iget-object v1, p0, Lcom/nianticproject/ingress/cc;->a:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v2, Lcom/nianticproject/ingress/cd;

    invoke-direct {v2, p0, p1, v0}, Lcom/nianticproject/ingress/cd;-><init>(Lcom/nianticproject/ingress/cc;Lcom/nianticproject/ingress/common/ui/m;Z)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1064
    iget-object v0, p0, Lcom/nianticproject/ingress/cc;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/NemesisActivity;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->u()Lcom/nianticproject/ingress/common/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e;->d()V

    .line 1065
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 1069
    return-void
.end method
