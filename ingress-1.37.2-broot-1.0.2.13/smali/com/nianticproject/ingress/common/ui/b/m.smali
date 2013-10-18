.class abstract Lcom/nianticproject/ingress/common/ui/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/nianticproject/ingress/common/ui/b/n;

.field public final c:Lcom/nianticproject/ingress/common/ui/b/b;

.field final synthetic d:Lcom/nianticproject/ingress/common/ui/b/l;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/b/l;ILcom/nianticproject/ingress/common/ui/b/n;Lcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/b/m;->d:Lcom/nianticproject/ingress/common/ui/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/b/m;->a:I

    .line 48
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/b/n;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/m;->b:Lcom/nianticproject/ingress/common/ui/b/n;

    .line 49
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/n;->a:Lcom/nianticproject/ingress/common/ui/b/n;

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_1

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/ui/b/n;->b:Lcom/nianticproject/ingress/common/ui/b/n;

    if-ne p3, v0, :cond_2

    if-nez p4, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 52
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/b/m;->c:Lcom/nianticproject/ingress/common/ui/b/b;

    .line 53
    return-void

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
