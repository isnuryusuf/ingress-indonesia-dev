.class final Lcom/nianticproject/ingress/common/ui/elements/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/ui/elements/l;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/nianticproject/ingress/common/ui/elements/l;

.field final c:Lcom/nianticproject/ingress/common/ui/elements/o;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/nianticproject/ingress/common/ui/elements/l;Lcom/nianticproject/ingress/common/ui/elements/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/ui/elements/l;",
            ">;",
            "Lcom/nianticproject/ingress/common/ui/elements/l;",
            "Lcom/nianticproject/ingress/common/ui/elements/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/k;->a:Ljava/util/Collection;

    .line 111
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/k;->b:Lcom/nianticproject/ingress/common/ui/elements/l;

    .line 112
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/elements/k;->c:Lcom/nianticproject/ingress/common/ui/elements/o;

    .line 113
    return-void
.end method
