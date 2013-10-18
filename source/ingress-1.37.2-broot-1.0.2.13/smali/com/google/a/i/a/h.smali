.class public final Lcom/google/a/i/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/a/i/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/i/a/d",
            "<",
            "Lcom/google/a/i/a/p",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/a/c/ih;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ih",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1168
    new-instance v0, Lcom/google/a/i/a/j;

    invoke-direct {v0}, Lcom/google/a/i/a/j;-><init>()V

    sput-object v0, Lcom/google/a/i/a/h;->a:Lcom/google/a/i/a/d;

    .line 1824
    invoke-static {}, Lcom/google/a/c/ih;->b()Lcom/google/a/c/ih;

    move-result-object v0

    new-instance v1, Lcom/google/a/i/a/k;

    invoke-direct {v1}, Lcom/google/a/i/a/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/c/ih;->a(Lcom/google/a/a/aa;)Lcom/google/a/c/ih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ih;->a()Lcom/google/a/c/ih;

    move-result-object v0

    sput-object v0, Lcom/google/a/i/a/h;->b:Lcom/google/a/c/ih;

    return-void
.end method

.method public static a(Lcom/google/a/i/a/p;Lcom/google/a/a/aa;)Lcom/google/a/i/a/p;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/i/a/p",
            "<TI;>;",
            "Lcom/google/a/a/aa",
            "<-TI;+TO;>;)",
            "Lcom/google/a/i/a/p",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/google/a/i/a/s;->a()Lcom/google/a/i/a/r;

    move-result-object v0

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/a/i/a/i;

    invoke-direct {v1, p1}, Lcom/google/a/i/a/i;-><init>(Lcom/google/a/a/aa;)V

    new-instance v2, Lcom/google/a/i/a/l;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/google/a/i/a/l;-><init>(Lcom/google/a/i/a/d;Lcom/google/a/i/a/p;B)V

    invoke-interface {p0, v2, v0}, Lcom/google/a/i/a/p;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/a/i/a/p;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/a/i/a/p",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/google/a/i/a/o;

    invoke-direct {v0, p0}, Lcom/google/a/i/a/o;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
