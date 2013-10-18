.class final Lcom/google/a/c/is;
.super Lcom/google/a/c/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/cp",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/ir;

.field private final b:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/ir;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/a/c/is;->a:Lcom/google/a/c/ir;

    invoke-direct {p0}, Lcom/google/a/c/cp;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/google/a/c/is;->a:Lcom/google/a/c/ir;

    iget-object v0, v0, Lcom/google/a/c/ir;->a:Lcom/google/a/c/iq;

    invoke-virtual {v0}, Lcom/google/a/c/iq;->a()Lcom/google/a/c/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dz;->a()Lcom/google/a/c/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/is;->b:Lcom/google/a/c/dc;

    return-void
.end method


# virtual methods
.method final c()Lcom/google/a/c/ct;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/a/c/is;->a:Lcom/google/a/c/ir;

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/a/c/is;->b:Lcom/google/a/c/dc;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/c/is;->a:Lcom/google/a/c/ir;

    iget-object v1, v1, Lcom/google/a/c/ir;->a:Lcom/google/a/c/iq;

    invoke-static {v1}, Lcom/google/a/c/iq;->a(Lcom/google/a/c/iq;)Lcom/google/a/c/dc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/c/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
