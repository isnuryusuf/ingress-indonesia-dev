.class public abstract Lcom/google/a/c/cq;
.super Lcom/google/a/c/dh;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dh",
        "<TK;TV;>;",
        "Lcom/google/a/c/am",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/a/c/cq;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/a/c/dh;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/cq;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/a/c/cq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/google/a/c/jj;

    invoke-direct {v0, p0, p1}, Lcom/google/a/c/jj;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static h()Lcom/google/a/c/cq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/cq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/google/a/c/bh;->a:Lcom/google/a/c/bh;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Lcom/google/a/c/am;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/a/c/cq;->e()Lcom/google/a/c/cq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d_()Lcom/google/a/c/ct;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/a/c/cq;->e()Lcom/google/a/c/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/cq;->g()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lcom/google/a/c/cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/cq",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/a/c/cq;->e()Lcom/google/a/c/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/cq;->g()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method
