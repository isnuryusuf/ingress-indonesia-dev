.class final Lcom/nianticproject/ingress/common/h/ag;
.super Lcom/nianticproject/ingress/common/h/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/x/f;

.field final synthetic b:Lcom/nianticproject/ingress/common/h/ac;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/h/ac;Lcom/nianticproject/ingress/common/u/q;Ljava/util/List;Ljava/util/List;Lcom/nianticproject/ingress/common/x/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/nianticproject/ingress/common/h/ag;->b:Lcom/nianticproject/ingress/common/h/ac;

    iput-object p5, p0, Lcom/nianticproject/ingress/common/h/ag;->a:Lcom/nianticproject/ingress/common/x/f;

    invoke-direct {p0, p2, p3, p4}, Lcom/nianticproject/ingress/common/h/g;-><init>(Lcom/nianticproject/ingress/common/u/q;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nianticproject/ingress/common/h/ag;->a:Lcom/nianticproject/ingress/common/x/f;

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/h/ag;->a:Lcom/nianticproject/ingress/common/x/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 345
    :cond_0
    return-void
.end method
