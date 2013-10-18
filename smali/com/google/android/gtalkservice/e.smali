.class public final enum Lcom/google/android/gtalkservice/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gtalkservice/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gtalkservice/e;

.field public static final enum b:Lcom/google/android/gtalkservice/e;

.field public static final enum c:Lcom/google/android/gtalkservice/e;

.field public static final enum d:Lcom/google/android/gtalkservice/e;

.field public static final enum e:Lcom/google/android/gtalkservice/e;

.field private static final synthetic f:[Lcom/google/android/gtalkservice/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/android/gtalkservice/e;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gtalkservice/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/e;->a:Lcom/google/android/gtalkservice/e;

    .line 43
    new-instance v0, Lcom/google/android/gtalkservice/e;

    const-string/jumbo v1, "AWAY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gtalkservice/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/e;->b:Lcom/google/android/gtalkservice/e;

    .line 44
    new-instance v0, Lcom/google/android/gtalkservice/e;

    const-string/jumbo v1, "EXTENDED_AWAY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gtalkservice/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/e;->c:Lcom/google/android/gtalkservice/e;

    .line 45
    new-instance v0, Lcom/google/android/gtalkservice/e;

    const-string/jumbo v1, "DND"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gtalkservice/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/e;->d:Lcom/google/android/gtalkservice/e;

    .line 46
    new-instance v0, Lcom/google/android/gtalkservice/e;

    const-string/jumbo v1, "AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gtalkservice/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gtalkservice/e;->e:Lcom/google/android/gtalkservice/e;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gtalkservice/e;

    sget-object v1, Lcom/google/android/gtalkservice/e;->a:Lcom/google/android/gtalkservice/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gtalkservice/e;->b:Lcom/google/android/gtalkservice/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gtalkservice/e;->c:Lcom/google/android/gtalkservice/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gtalkservice/e;->d:Lcom/google/android/gtalkservice/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gtalkservice/e;->e:Lcom/google/android/gtalkservice/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gtalkservice/e;->f:[Lcom/google/android/gtalkservice/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gtalkservice/e;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/google/android/gtalkservice/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/e;

    return-object v0
.end method

.method public static final values()[Lcom/google/android/gtalkservice/e;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gtalkservice/e;->f:[Lcom/google/android/gtalkservice/e;

    invoke-virtual {v0}, [Lcom/google/android/gtalkservice/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gtalkservice/e;

    return-object v0
.end method
