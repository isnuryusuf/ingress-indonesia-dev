.class final Lcom/nianticproject/ingress/common/inventory/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/aj;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

.field public f:Lcom/nianticproject/ingress/common/inventory/ui/q;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Lcom/nianticproject/ingress/common/inventory/ui/aj;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/inventory/ui/aj;",
            ">;",
            "Lcom/nianticproject/ingress/common/inventory/ui/aj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->g:Ljava/lang/String;

    .line 90
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->a:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->b:Ljava/util/Set;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->c:F

    .line 93
    iput-object p4, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->d:Ljava/util/Set;

    .line 94
    iput-object p5, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->e:Lcom/nianticproject/ingress/common/inventory/ui/aj;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/inventory/ui/ae;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ae;->g:Ljava/lang/String;

    return-object v0
.end method
