.class final Lcom/google/a/c/if;
.super Lcom/google/a/c/ih;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/ih",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/a/c/if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/a/c/if;

    invoke-direct {v0}, Lcom/google/a/c/if;-><init>()V

    sput-object v0, Lcom/google/a/c/if;->a:Lcom/google/a/c/if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/a/c/ih;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/a/c/ih;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/a/c/ih",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/google/a/c/iz;->a:Lcom/google/a/c/iz;

    return-object v0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "Ordering.natural()"

    return-object v0
.end method
