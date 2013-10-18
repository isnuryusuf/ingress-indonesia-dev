.class public final Lcom/google/a/c/id;
.super Lcom/google/a/c/ex;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ex",
        "<",
        "Ljava/lang/Class",
        "<+TB;>;TB;>;",
        "Lcom/google/a/c/ar",
        "<TB;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/a/c/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/er",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/a/c/ie;

    invoke-direct {v0}, Lcom/google/a/c/ie;-><init>()V

    sput-object v0, Lcom/google/a/c/id;->b:Lcom/google/a/c/er;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+TB;>;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/google/a/c/id;->b:Lcom/google/a/c/er;

    invoke-direct {p0, p1, v0}, Lcom/google/a/c/ex;-><init>(Ljava/util/Map;Lcom/google/a/c/er;)V

    .line 61
    return-void
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/google/a/c/id;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/google/a/c/id;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/id",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/google/a/c/id;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/a/c/id;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;TB;)TT;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/a/h/c;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/a/c/id;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/c/id;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/a/c/ex;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/a/c/ex;->putAll(Ljava/util/Map;)V

    return-void
.end method
