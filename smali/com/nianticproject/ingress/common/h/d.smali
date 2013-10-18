.class final Lcom/nianticproject/ingress/common/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/h/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/c;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/d;->a:Lcom/nianticproject/ingress/common/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/d;->a:Lcom/nianticproject/ingress/common/h/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/c;->a(Lcom/nianticproject/ingress/common/h/c;)V

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/d;->a:Lcom/nianticproject/ingress/common/h/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/h/c;->c(Lcom/nianticproject/ingress/common/h/c;)Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/d;->a:Lcom/nianticproject/ingress/common/h/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/h/c;->b(Lcom/nianticproject/ingress/common/h/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/g/e;->b(Ljava/util/Set;)Z

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string/jumbo v0, "deployResonatorTask.failure"

    return-object v0
.end method
