import Foundation

// MARK: - Project

/// Projects are defined in `Project.swift` files, which we refer to as manifest files.
/// Manifests need to import the framework `ProjectDescription` which contains all the values that are available for you to describe your projects.
public struct Project: Codable, Equatable {
    /// Name of the project. It's used to determine the name of the generated Xcode project.
    public let name: String
    /// Name of the organization used by Xcode as copyright when generating new files.
    public let organizationName: String?
    /// Additional project options
    public let options: Options
    /// List of Swift Packages used by the project.
    public let packages: [Package]
    /// List of targets within the project.
    public let targets: [Target]
    /// List of custom schemes within the project, default scheme for each target is generated by default
    public let schemes: [Scheme]
    /// Project build settings and configuration files
    public let settings: Settings?
    /// Customizable file header template for Xcode built-in file templates
    public let fileHeaderTemplate: FileHeaderTemplate?
    /// List of project related files to include in the project - these won't be included in any of the build phases.
    /// For target related files, use the corresponding Target.additionalFiles parameter.
    public let additionalFiles: [FileElement]
    /// List of resource synthesizer for generating accessors for resources.
    public let resourceSynthesizers: [ResourceSynthesizer]

    public init(
        name: String,
        organizationName: String? = nil,
        options: Options = .options(),
        packages: [Package] = [],
        settings: Settings? = nil,
        targets: [Target] = [],
        schemes: [Scheme] = [],
        fileHeaderTemplate: FileHeaderTemplate? = nil,
        additionalFiles: [FileElement] = [],
        resourceSynthesizers: [ResourceSynthesizer] = .default
    ) {
        self.name = name
        self.organizationName = organizationName
        self.options = options
        self.packages = packages
        self.targets = targets
        self.schemes = schemes
        self.settings = settings
        self.additionalFiles = additionalFiles
        self.fileHeaderTemplate = fileHeaderTemplate
        self.resourceSynthesizers = resourceSynthesizers
        dumpIfNeeded(self)
    }
}
