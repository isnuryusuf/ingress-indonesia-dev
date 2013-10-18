.class public abstract Lcom/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static a()Lcom/a/a/e;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/a/a/i;

    invoke-direct {v0}, Lcom/a/a/i;-><init>()V

    return-object v0
.end method

.method public static a(F)Lcom/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 173
    new-instance v0, Lcom/a/a/l;

    invoke-direct {v0, p0}, Lcom/a/a/l;-><init>(F)V

    return-object v0
.end method

.method public static b(F)Lcom/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 182
    new-instance v0, Lcom/a/a/m;

    invoke-direct {v0, p0}, Lcom/a/a/m;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/a/a/c;)F
.end method

.method public abstract a(Ljava/lang/Object;)F
.end method

.method public final b(Ljava/lang/Object;)F
    .locals 2
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/a/a/d;->instance:Lcom/a/a/d;

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/d;->width(F)F

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/Object;)F
    .locals 2
    .parameter

    .prologue
    .line 48
    sget-object v0, Lcom/a/a/d;->instance:Lcom/a/a/d;

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/d;->height(F)F

    move-result v0

    return v0
.end method
