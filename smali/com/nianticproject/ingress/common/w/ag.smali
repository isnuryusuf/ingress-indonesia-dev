.class final Lcom/nianticproject/ingress/common/w/ag;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/w/ah;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p2, p0, Lcom/nianticproject/ingress/common/w/ag;->a:Lcom/nianticproject/ingress/common/w/ah;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/w/ag;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/ag;->a:Lcom/nianticproject/ingress/common/w/ah;

    invoke-static {}, Lcom/nianticproject/ingress/common/w/ad;->b()Lcom/nianticproject/ingress/common/b/j;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/ag;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/b/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/w/ah;->a(Ljava/lang/Object;)V

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method
