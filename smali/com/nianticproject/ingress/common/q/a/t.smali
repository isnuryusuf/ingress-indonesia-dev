.class public final Lcom/nianticproject/ingress/common/q/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/nianticproject/ingress/common/q/a/w;

.field private final d:Lcom/nianticproject/ingress/common/q/a/v;

.field private final e:Lcom/nianticproject/ingress/common/q/a/u;


# direct methods
.method constructor <init>([ILjava/util/ArrayList;Lcom/nianticproject/ingress/common/q/a/w;Lcom/nianticproject/ingress/common/q/a/v;Lcom/nianticproject/ingress/common/q/a/u;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/u;",
            ">;",
            "Lcom/nianticproject/ingress/common/q/a/w;",
            "Lcom/nianticproject/ingress/common/q/a/v;",
            "Lcom/nianticproject/ingress/common/q/a/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/a/t;->a:[I

    .line 80
    iput-object p2, p0, Lcom/nianticproject/ingress/common/q/a/t;->b:Ljava/util/ArrayList;

    .line 81
    iput-object p3, p0, Lcom/nianticproject/ingress/common/q/a/t;->c:Lcom/nianticproject/ingress/common/q/a/w;

    .line 82
    iput-object p4, p0, Lcom/nianticproject/ingress/common/q/a/t;->d:Lcom/nianticproject/ingress/common/q/a/v;

    .line 83
    iput-object p5, p0, Lcom/nianticproject/ingress/common/q/a/t;->e:Lcom/nianticproject/ingress/common/q/a/u;

    .line 84
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/t;->a:[I

    array-length v0, v0

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/t;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method public final b()Lcom/nianticproject/ingress/common/q/a/u;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/a/t;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/a/u;

    return-object v0
.end method
