.class final Lcom/nianticproject/ingress/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/ca;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ca;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/nianticproject/ingress/cb;->b:Lcom/nianticproject/ingress/ca;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/cb;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/nianticproject/ingress/cb;->b:Lcom/nianticproject/ingress/ca;

    iget-object v0, v0, Lcom/nianticproject/ingress/ca;->a:Lcom/nianticproject/ingress/NemesisActivity;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/cb;->a:Z

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/NemesisActivity;Z)V

    .line 1040
    iget-object v0, p0, Lcom/nianticproject/ingress/cb;->b:Lcom/nianticproject/ingress/ca;

    iget-object v0, v0, Lcom/nianticproject/ingress/ca;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/NemesisActivity;)Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/r;->b()V

    .line 1041
    return-void
.end method
