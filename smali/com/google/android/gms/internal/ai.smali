.class public Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# static fields
.field public static final a:Lcom/google/android/gms/internal/g;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ai;->a:Lcom/google/android/gms/internal/g;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ai;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ai;->c:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ak;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ai;->b:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ai;->c:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/j;)Lcom/google/android/gms/internal/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/j",
            "<**>;)",
            "Lcom/google/android/gms/internal/ai;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ai;

    check-cast p0, Lcom/google/android/gms/internal/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ai;-><init>(Lcom/google/android/gms/internal/ak;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ai;->b:I

    return v0
.end method

.method final b()Lcom/google/android/gms/internal/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->c:Lcom/google/android/gms/internal/ak;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/j",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->c:Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->c:Lcom/google/android/gms/internal/ak;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ai;->a:Lcom/google/android/gms/internal/g;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ai;->a:Lcom/google/android/gms/internal/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V

    return-void
.end method
