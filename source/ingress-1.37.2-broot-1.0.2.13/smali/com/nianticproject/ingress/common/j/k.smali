.class final Lcom/nianticproject/ingress/common/j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/graphics/Color;

.field final synthetic e:Lcom/nianticproject/ingress/common/j/h;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/k;->e:Lcom/nianticproject/ingress/common/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/k;->a:Ljava/lang/Object;

    .line 56
    iput-object p3, p0, Lcom/nianticproject/ingress/common/j/k;->b:Ljava/lang/Object;

    .line 57
    iput-object p4, p0, Lcom/nianticproject/ingress/common/j/k;->c:Ljava/lang/Object;

    .line 58
    iput-object p5, p0, Lcom/nianticproject/ingress/common/j/k;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    return-void
.end method
