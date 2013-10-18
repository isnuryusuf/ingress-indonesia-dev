.class Lcom/google/a/b/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/ap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/b/ap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile j:Lcom/google/a/b/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    invoke-static {}, Lcom/google/a/b/o;->j()Lcom/google/a/b/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/az;->j:Lcom/google/a/b/bd;

    .line 1069
    iput-object p1, p0, Lcom/google/a/b/az;->g:Ljava/lang/Object;

    .line 1070
    iput p2, p0, Lcom/google/a/b/az;->h:I

    .line 1071
    iput-object p3, p0, Lcom/google/a/b/az;->i:Lcom/google/a/b/ap;

    .line 1072
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/b/bd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/a/b/az;->j:Lcom/google/a/b/bd;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 1088
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/a/b/bd;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/google/a/b/az;->j:Lcom/google/a/b/bd;

    .line 1157
    return-void
.end method

.method public final b()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/google/a/b/az;->i:Lcom/google/a/b/ap;

    return-object v0
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/a/b/az;->h:I

    return v0
.end method

.method public c(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/a/b/az;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e()J
    .locals 1

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public f()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public g()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public h()J
    .locals 1

    .prologue
    .line 1115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public i()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public j()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
