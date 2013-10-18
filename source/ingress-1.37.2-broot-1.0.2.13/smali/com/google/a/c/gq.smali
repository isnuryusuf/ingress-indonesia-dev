.class final Lcom/google/a/c/gq;
.super Lcom/google/a/c/go;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/gh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/go",
        "<TK;TV;>;",
        "Lcom/google/a/c/gh",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile e:J

.field f:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/a/c/gh;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1014
    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/c/go;-><init>(Ljava/lang/Object;ILcom/google/a/c/gh;)V

    .line 1019
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/a/c/gq;->e:J

    .line 1031
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gq;->f:Lcom/google/a/c/gh;

    .line 1044
    invoke-static {}, Lcom/google/a/c/fi;->g()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gq;->g:Lcom/google/a/c/gh;

    .line 1015
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput-wide p1, p0, Lcom/google/a/c/gq;->e:J

    .line 1029
    return-void
.end method

.method public final a(Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/google/a/c/gq;->f:Lcom/google/a/c/gh;

    .line 1042
    return-void
.end method

.method public final b(Lcom/google/a/c/gh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/google/a/c/gq;->g:Lcom/google/a/c/gh;

    .line 1055
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 1023
    iget-wide v0, p0, Lcom/google/a/c/gq;->e:J

    return-wide v0
.end method

.method public final f()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/a/c/gq;->f:Lcom/google/a/c/gh;

    return-object v0
.end method

.method public final g()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/a/c/gq;->g:Lcom/google/a/c/gh;

    return-object v0
.end method
