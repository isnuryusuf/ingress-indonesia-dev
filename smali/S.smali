.class public final enum LS;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LS;

.field private static final synthetic a:[LS;

.field public static final enum b:LS;

.field private static enum c:LS;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LS;

    const-string v1, "HIDDEN"

    const-string v2, "Hide"

    invoke-direct {v0, v1, v3, v2}, LS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LS;->c:LS;

    new-instance v0, LS;

    const-string v1, "AT_END"

    const-string v2, "Last"

    invoke-direct {v0, v1, v4, v2}, LS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LS;->a:LS;

    new-instance v0, LS;

    const-string v1, "AT_START"

    const-string v2, "First"

    invoke-direct {v0, v1, v5, v2}, LS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LS;->b:LS;

    const/4 v0, 0x3

    new-array v0, v0, [LS;

    sget-object v1, LS;->c:LS;

    aput-object v1, v0, v3

    sget-object v1, LS;->a:LS;

    aput-object v1, v0, v4

    sget-object v1, LS;->b:LS;

    aput-object v1, v0, v5

    sput-object v0, LS;->a:[LS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LS;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LS;
    .locals 1

    const-class v0, LS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LS;

    return-object v0
.end method

.method public static values()[LS;
    .locals 1

    sget-object v0, LS;->a:[LS;

    invoke-virtual {v0}, [LS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LS;

    return-object v0
.end method
