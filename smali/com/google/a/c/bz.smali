.class final Lcom/google/a/c/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final d:I

.field e:Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/a/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/bz",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/a/c/bz;->a:Ljava/lang/Object;

    .line 95
    iput p2, p0, Lcom/google/a/c/bz;->b:I

    .line 96
    iput-object p3, p0, Lcom/google/a/c/bz;->c:Ljava/lang/Object;

    .line 97
    iput p4, p0, Lcom/google/a/c/bz;->d:I

    .line 98
    return-void
.end method
