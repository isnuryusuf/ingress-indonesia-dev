.class final Lcom/google/a/c/kw;
.super Lcom/google/a/c/kv;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/kv",
        "<TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/a/c/kv;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/a/c/kw;->a:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lcom/google/a/c/kw;->b:Ljava/lang/Object;

    .line 80
    iput-object p3, p0, Lcom/google/a/c/kw;->c:Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/a/c/kw;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/a/c/kw;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/a/c/kw;->c:Ljava/lang/Object;

    return-object v0
.end method
