.class final enum Lcom/google/a/b/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/ck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/b/j;",
        ">;",
        "Lcom/google/a/b/ck",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/b/j;

.field private static final synthetic b:[Lcom/google/a/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcom/google/a/b/j;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/google/a/b/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/j;->a:Lcom/google/a/b/j;

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/a/b/j;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/b/j;->a:Lcom/google/a/b/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/b/j;->b:[Lcom/google/a/b/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/b/j;
    .locals 1
    .parameter

    .prologue
    .line 198
    const-class v0, Lcom/google/a/b/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/j;

    return-object v0
.end method

.method public static values()[Lcom/google/a/b/j;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/google/a/b/j;->b:[Lcom/google/a/b/j;

    invoke-virtual {v0}, [Lcom/google/a/b/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/j;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method
