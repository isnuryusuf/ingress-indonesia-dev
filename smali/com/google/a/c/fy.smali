.class final Lcom/google/a/c/fy;
.super Lcom/google/a/c/fl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/fl",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/a/c/fx;


# direct methods
.method constructor <init>(Lcom/google/a/c/fx;)V
    .locals 0
    .parameter

    .prologue
    .line 3130
    iput-object p1, p0, Lcom/google/a/c/fy;->c:Lcom/google/a/c/fx;

    invoke-direct {p0}, Lcom/google/a/c/fl;-><init>()V

    .line 3132
    iput-object p0, p0, Lcom/google/a/c/fy;->a:Lcom/google/a/c/gh;

    .line 3144
    iput-object p0, p0, Lcom/google/a/c/fy;->b:Lcom/google/a/c/gh;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/a/c/gh;)V
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
    .line 3141
    iput-object p1, p0, Lcom/google/a/c/fy;->a:Lcom/google/a/c/gh;

    .line 3142
    return-void
.end method

.method public final d(Lcom/google/a/c/gh;)V
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
    .line 3153
    iput-object p1, p0, Lcom/google/a/c/fy;->b:Lcom/google/a/c/gh;

    .line 3154
    return-void
.end method

.method public final h()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3136
    iget-object v0, p0, Lcom/google/a/c/fy;->a:Lcom/google/a/c/gh;

    return-object v0
.end method

.method public final i()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/google/a/c/fy;->b:Lcom/google/a/c/gh;

    return-object v0
.end method
