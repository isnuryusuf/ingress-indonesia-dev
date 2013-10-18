.class public final Lcom/google/a/c/cr;
.super Lcom/google/a/c/bp;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/bp",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;",
        "Lcom/google/a/c/ar",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/a/c/dh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/a/c/bp;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/a/c/cr;->a:Lcom/google/a/c/dh;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/c/dh;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/a/c/cr;-><init>(Lcom/google/a/c/dh;)V

    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/google/a/c/cr;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "S:TB;>(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Class",
            "<+TS;>;+TS;>;)",
            "Lcom/google/a/c/cr",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 123
    instance-of v0, p0, Lcom/google/a/c/cr;

    if-eqz v0, :cond_0

    .line 126
    check-cast p0, Lcom/google/a/c/cr;

    .line 129
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/c/cs;

    invoke-direct {v0}, Lcom/google/a/c/cs;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/a/c/cs;->a(Ljava/util/Map;)Lcom/google/a/c/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/cs;->a()Lcom/google/a/c/cr;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/a/c/cr;->a:Lcom/google/a/c/dh;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/a/c/cr;->a:Lcom/google/a/c/dh;

    return-object v0
.end method

.method protected final bridge synthetic l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/a/c/cr;->a:Lcom/google/a/c/dh;

    return-object v0
.end method
